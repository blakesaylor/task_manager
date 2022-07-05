require 'rails_helper'

RSpec.describe Task, type: :model do
    describe 'instance methods' do
        describe '#laundry?' do
            it 'returns true when the title is laundry' do
                task = Task.create!(title: 'laundry', description: 'clean clothes')
                expect(task.laundry?).to be true
            end

            it 'returns false when the title is not laundry' do
                task = Task.create!(title: 'mopping', description: 'clean floors')
                expect(task.laundry?).to be false
            end

            it 'returns true when the description is laundry' do
                task = Task.create!(title: 'Clean my clothes', description: 'laundry')
                expect(task.laundry?).to be true
            end

            it 'returns false when the description is not laundry' do
                task = Task.create!(title: 'mopping', description: 'clean floors')
                expect(task.laundry?).to be false
            end

            it 'returns false when neither the description nor title is laundry' do
                task = Task.create!(title: 'mopping', description: 'clean floors')
                expect(task.laundry?).to be false
            end

            it 'returns true when the title contains the word laundry' do
                task = Task.create!(title: 'do the laundry', description: 'clean clothes')
                expect(task.laundry?).to be true
            end

            it 'is case insensitive when checking if the title contains the word laundry' do
                task = Task.create!(title: 'do the lAUNdry', description: 'clean clothes')
                expect(task.laundry?).to be true
            end

            it 'returns true when the description contains the word laundry' do
                task = Task.create!(title: 'clean clothes', description: 'do the laundry')
                expect(task.laundry?).to be true
            end

            it 'is case insensitive when checking if the description contains the word laundry' do
                task = Task.create!(title: 'clean clothes', description: 'do the LaUndry')
                expect(task.laundry?).to be true
            end
        end
    end
end